acf(q_ite)
#ARIMA
pacf(q_ite)
acf(diff(log(q_ite)))
pacf(diff(log(q_ite)))
fit <- arima(log(q_ite), c(0, 1, 0), seasonal = list(order=c(0,1,0), period = 1))
pred <- predict(fit, n.ahead = 10)
pred1 <- 2.718^pred$pred
ts.plot(q_ite, 2.718^pred$pred)

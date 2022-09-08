acf(q_ite)
#ARIMA
pacf(q_ite)
acf(diff(q_ite))
pacf(diff(q_ite))
fit <- arima(diff(q_ite), c(1, 1, 0))
pred <- predict(fit, n.ahead = 10)
pred1 <- 2.718^pred$pred
ts.plot(q_ite, 2.718^pred$pred)
plot(pred1)
acf(diff(diff(q_ite)))
pacf(diff(diff(q_ite)))
fit <- arima(log(q_ite), c(1, 2, 0))
pred <- predict(fit, n.ahead = 10)
pred1 <- 2.718^pred$pred
ts.plot(q_ite, 2.718^pred$pred)
plot(pred1)
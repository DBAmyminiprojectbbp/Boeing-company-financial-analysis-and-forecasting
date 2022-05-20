fit<-auto.arima(q_efo)
pred <- predict(fit, n.ahead = 10)
ts.plot(q_efo, pred$se)

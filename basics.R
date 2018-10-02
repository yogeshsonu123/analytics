#topics ----
#factors, env, import/export. package install
#rep, recode, split, partition, subset, loops, cast & melt
#missing values. duplicates, apply
#graphs - bar, multiple line, pie, box, corrgram

fit = lm(weight ~ height,data = women)
summary(fit)
range(women$height)
(ndata=data.frame(height =c(58.5, 60.7)))
(p=predict(fit,newdata=ndata))
cbind(ndata,p)
plot(fit)



(ndata = data.frame(height = c(60.5, 75.5)))

(predictedwt = predict(fit, newdata = ndata))
cbind(ndata, predictedwt)

resid(fit)
fitted(fit)
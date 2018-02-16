    X <- data.frame(cons=rep(1, N),
                    dconservado=dat.tmp$dconservado,
                    dperdido=dat.tmp$dperdido,
                    dhaHecho=dat.tmp$dhaHecho,
                    dinteresaPol=dat.tmp$dinteresaPol,
                    dsmartPh=dat.tmp$dsmartPh,
                    dpan=dat.tmp$dpan,
                    dpri=dat.tmp$dpri,
                    dmorena=dat.tmp$dmorena)
    if(incl.perdido==FALSE)  X$dperdido <- NULL
    if(incl.morena==FALSE)   X$dmorena  <- NULL




wewewewew


table(dat$dperdidoLily)
table(dat$dconservadoLily)
table(dat$dadquiridoLily)
table(1- dat$dperdidoLily - dat$dconservadoLily - dat$dadquiridoLily)

table(dat$dperdidoJavier)
table(dat$dconservadoJavier)
table(dat$dadquiridoJavier)
table(1- dat$dperdidoJavier - dat$dconservadoJavier - dat$dadquiridoJavier)

table(dat$dperdidoGina)
table(dat$dconservadoGina)
table(dat$dadquiridoGina)
table(1- dat$dperdidoGina - dat$dconservadoGina - dat$dadquiridoGina)

table(dat$dperdidoAnaIsabel)
table(dat$dconservadoAnaIsabel)
table(dat$dadquiridoAnaIsabel)
table(1- dat$dperdidoAnaIsabel - dat$dconservadoAnaIsabel - dat$dadquiridoAnaIsabel)

table(dat$dperdidoGina)
table(dat$dconservadoGina)
table(dat$dadquiridoGina)
table(1- dat$dperdidoGina - dat$dconservadoGina - dat$dadquiridoGina)

table(dat$dperdidoAnaIsabel)
table(dat$dconservadoAnaIsabel)
table(dat$dadquiridoAnaIsabel)
table(1- dat$dperdidoAnaIsabel - dat$dconservadoAnaIsabel - dat$dadquiridoAnaIsabel)

table(dat$dperdidoSonia)
table(dat$dconservadoSonia)
table(dat$dadquiridoSonia)
table(1- dat$dperdidoSonia - dat$dconservadoSonia - dat$dadquiridoSonia)

table(dat$dperdidoLariza)
table(dat$dconservadoLariza)
table(dat$dadquiridoLariza)
table(1- dat$dperdidoLariza - dat$dconservadoLariza - dat$dadquiridoLariza)

table(dat$dperdidoArmando)
table(dat$dconservadoArmando)
table(dat$dadquiridoArmando)
table(1- dat$dperdidoArmando - dat$dconservadoArmando - dat$dadquiridoArmando)

table(dat$dperdidoLeonel)
table(dat$dconservadoLeonel)
table(dat$dadquiridoLeonel)
table(1- dat$dperdidoLeonel - dat$dconservadoLeonel - dat$dadquiridoLeonel)

table(dat$dperdidoLencho)
table(dat$dconservadoLencho)
table(dat$dadquiridoLencho)
table(1- dat$dperdidoLencho - dat$dconservadoLencho - dat$dadquiridoLencho)



#######################
#######################
##  JAGS ESTIMATION  ##
#######################
#######################
library(R2jags)
###########
## MODEL ##
###########
logitModel <- function() {
    ### OLS regression model
    for (n in 1:N){                ## loop over observations
        depvar[n] ~ dbern(p[n]);   
        logit(p[n]) <- inprod(beta[],X[n,]);  ## FLEXIBLE SPECIFICATION FOR VARYING N OF REGRESSORS, PREPARE depvar AND X IN R
    }
    ############################
    ## NON-INFORMATIVE PRIORS ##
    ############################
    for (k in 1:K){                ## loop over regressors
        beta[k] ~ dnorm(0, .0001);
    }
}
#
# Wrap in a function
fitJags <- function(model = NA, test = TRUE){
    ######################################
    ### EXTRA DATA PREP FOR JAGS MODEL ###
    ######################################
    model <- model                                # generic model name
    dat.tmp <- dat # duplicate
    incumbent <- variable.names(model)[grep("dconservado", variable.names(model))] # get incumbent's variable name
    dat.tmp$dconservado <- dat.tmp[, incumbent]                                    # select proper column, rename it
    incumbent <- sub("dconservado", "", incumbent)                                 # trim incumbent's name
    dat.tmp$dconoce  <- dat.tmp[, paste("dconoce", incumbent, sep = "")]           # get incumbent's dep var
    depvar <- dat.tmp$dconoce
    N <- length(depvar)
    X <- data.frame(cons=rep(1, N),
                    dconservado=dat.tmp$dconservado,
                    dhaHecho=dat.tmp$dhaHecho,
                    dinteresaPol=dat.tmp$dinteresaPol,
                    dsmartPh=dat.tmp$dsmartPh,
                    dpan=dat.tmp$dpan,
                    dpri=dat.tmp$dpri,
                    dmorena=dat.tmp$dmorena)
    # labels to interpret parameters
    var.labels <- colnames(X)
    K <- length(var.labels)
    X <- as.matrix(X)
    ### Data, initial values, and parameter vector for jags
    dl.data <- list("N", "K", "depvar", "X")
    dl.inits <- function (){
        list (
        #beta=rnorm(K),
            beta=summary(model)$coefficients[,1] # use glm's estimates
        )
    }
    dl.parameters <- c("beta")
    #dm.parameters <- c("beta", "sigma", "depvar.hat")
    ## test ride
    if (test == TRUE) {
        tmp <- jags (data=dl.data, inits=dl.inits, dl.parameters,
                     model.file=logitModel, n.chains=3,
                     n.iter=100, n.thin=10
                     )
    } else {
        ## estimate
        fit <- jags (data=dl.data, inits=dl.inits, dl.parameters,
                     model.file=logitModel, n.chains=3,
                     n.iter=50000, n.thin=100,
                     )
    }
    #
    #tmp <- fit
    fit <- update(fit, 10000) # continue updating to produce 10000 new draws per chain
    #traceplot(fit) # visually check posterior parameter convergence
    #
    fit$var.labels <- var.labels # add object to interpret coefficients
    #
    fit$incumbent <- incumbent
    return(fit)
}
#
fit1 <- fitJags(model = model1, test = FALSE)
fit2 <- fitJags(model = model2, test = FALSE)
fit3 <- fitJags(model = model3, test = FALSE)
fit4 <- fitJags(model = model4, test = FALSE)
fit5 <- fitJags(model = model5, test = FALSE)
fit6 <- fitJags(model = model6, test = FALSE)
fit7 <- fitJags(model = model7, test = FALSE)
fit8 <- fitJags(model = model8, test = FALSE)
fit9 <- fitJags(model = model9, test = FALSE)

sims4List <- function(fit = NA, posInList = NA){
    fit <- fit
    posInList <- posInList
    incumbent <- fit$incumbent
    # plug elements into sims list
    antilogit <- function(X){ exp(X) / (exp(X)+1) }
    ## pr(recognizes candidate)
    coefs <- fit$BUGSoutput$sims.matrix; coefs <- coefs[,-grep("deviance", colnames(fit$BUGSoutput$sims.matrix))]
    scenario <- c(
        1, #cons=1,
        0, #dconservado will be changed to c(0,1) below,
        median(dat.tmp$dhaHecho), #dhaHecho <- median,
        median(dat.tmp$dinteresaPol), #dinteresaPol=median,
        median(dat.tmp$dsmartPh), #dsmartPh=median,
        1, #dpan=c(0,1),
        0, #dpri=c(0,1),
        0  #dmorena=c(0,1)
    )
    names(scenario) <- c("cons", "dconservado", "dhaHecho", "dinteresaPol", "dsmartPh", "dpan", "dpri", "dmorena")
    #
    n <- nrow(coefs)
    sc <- matrix(rep(scenario, n), nrow = n, byrow = TRUE)
    sc <- as.data.frame(sc)
    colnames(sc) <- c("cons", "dconservado", "dhaHecho", "dinteresaPol", "dsmartPh", "dpan", "dpri", "dmorena")
    # change dconoce by alternating 0,1
    sc$dconservado <- rep ( 0:1, n/2)
    sc <- as.matrix(sc)
    #
    tmp <- fit$BUGSoutput$summary[grep("beta", rownames(fit$BUGSoutput$summary)),1] # coef point pred (mean posterior)
    pointPred <- sc %*% diag(tmp) # right side achieves multiplication of matrix columns by vector
    pointPred <- antilogit(rowSums(pointPred)) # will plug this in sc later
    #
    pred <- sc * coefs
    pred <- antilogit(rowSums(pred)) # will plug this in sc later
    #
    sc <- as.data.frame(sc); colnames(sc) <- c("cons", "dconservado", "dhaHecho", "dinteresaPol", "dsmartPh", "dpan", "dpri", "dmorena")
    sc$pred <- pred; #rm(pred)
    sc$pointPred <- pointPred; #rm(pointPred)
    #
    return(list(sc=sc, posInList=posInList, incumbent=incumbent))
}

sims <- list(NA,NA,NA,NA,NA,NA,NA,NA,NA) # will receive simulations
#
# plug simulations into sims list
tmp <- sims4List(fit = fit9, posInList = 9)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
summary(sims)


# kernel density plots
names <- c("Javier Díaz González", "Lily Gutiérrez Burciaga", "Georgina Cano Torralva", "Ana Isabel Durán Piña", "Sonia Villarreal Pérez", "Lariza Montiel Luis", "José Armando Pruneda Valdez", "Leonel Contreras Pámanes", "Lencho Siller")
i <- 1 # select one fit's sims
sc <- sims[[i]]; incumbent <- names(sims[i])
d <- density(sc$pred[sc$dconservado==0])
d1 <- density(sc$pred[sc$dconservado==1])
pdf(file = 
par(mar = c(2,2,2,2) + .1)
plot(d, xlim = c(0,.8), type = "n", main = names[i], axes = FALSE, ylab = "", xlab = "Prob(reconocimiento)")
axis(1)
polygon(d,  col = rgb(0,0,1, alpha = .5))
polygon(d1, col = rgb(1,0,0, alpha = .5))

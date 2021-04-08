* Encoding: UTF-8.

* Simple Moderation Regression.
REGRESSION
  /DESCRIPTIVES N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CHANGE CI
  /CRITERIA=PIN(.05) POUT(.10)
  /DEPENDENT watch
  /METHOD=ENTER luke lionel 
  /METHOD=ENTER X_luke_lionel.

* Simple Moderation Regressoin using PROCESS.
process y=watch/
            x=luke/
            w=lionel/
            model=1/
            PLOT=1.

* Heirarchical Moderated Regressoin.
REGRESSION
  /DESCRIPTIVES N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CHANGE CI
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT watch
  /METHOD=ENTER luke lionel C_katy
  /METHOD=ENTER X_luke_lionel X_luke_katy X_lionel_katy
  /METHOD=ENTER  X_luke_lionel_katy.

* PROCESS Model 2.
process y=watch/
            x=luke/
            w=lionel/
            z=C_katy/
            model=2/
            PLOT=1.

* PROCESS Model 2 with switched predictors.
process y=watch/
            x=lionel/
            w=luke/
            z=C_katy/
            model=2/
            PLOT=1.

* PROCESS Model 3.
process y=watch/
            x=luke/
            w=lionel/
            z=C_katy/
            model=3/
            PLOT=1.

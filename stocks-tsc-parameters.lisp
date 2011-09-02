(in-package "XCS")

(defparameter *single-step-output?* t)
(defparameter *stat-report* nil)
(defparameter *stock-starting-index* 100)
(defparameter *stock-termination-actions* 1500) ; this is the number of actions
(defparameter *reward-method* #'get-reward.a2) ; This should be get-reward.a2
(defparameter *classification-method* 'classify.going-up?)
(defmethod classify ((analyzer stocks-tsc-analyzer))
  "We classify the next point as either up or down from our current point."
  (if (going-up? analyzer) :stock :bank))
(defparameter *valid-actions-3* '(:stock :bank :hold))
(defparameter *valid-actions-2* '(:stock :bank))
(defparameter *valid-actions* *valid-actions-2*)
(defparameter *initial-money* 1000000.00)
(defparameter *stocks-tsc-learning-parameters*
  (make-instance 'tmscs-learning-parameters
                 :maximum-environment-condition-length 10
                 :valid-operations (list #'simple-slope)
                 :valid-fields (list #'closing-price
                                     #'opening-price
                                     #'trading-volume)
                 :minimum-number-of-actions (length *valid-actions*)
                 :maximum-total-numerosity 1000 ; N = 400
                 :learning-rate 0.2 ; beta = 0.2
                 :discount-factor 0.71 ; gamma = 0.71
                 :GA-threshold 25 ; theta = 25
                 :equal-error-threshold 20.0 ; epsilon_0 = 10.0
                 :multiplier-parameter 0.1 ; alpha = 0.1
                 :crossover-probability 0.9 ; chi = 0.9
                 :mutation-probability 0.04 ; mu = 0.04
                 :exploration-probability 0.2
                 :fitness-fraction-threshold 0.1 ; delta = 0.1
                 ; phi = 0.5, covering multiplier
                 :covering-probability 0.33 ; P_# = 0.33
                 :initial-prediction 10.0 ; p_I = 10.0
                 :initial-prediction-error 0.0 ; epsilon_I = 0.0
                 :initial-fitness 0.01 ; F_I = 0.01
                 :minimum-number-of-actions (length *valid-actions*)
                 :GA-subsumption? t
                 :action-set-subsumption? nil
                 :possible-actions *valid-actions*))
(defparameter *stock-ticker* "^dji")
(defparameter *stocks-xcs-output* t)
(defparameter *stocks-xcs-report-days* 1)
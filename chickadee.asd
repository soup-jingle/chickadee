;;;; chickadee.asd

(asdf:defsystem #:chickadee
  :description "Describe chickadee here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:jsown #:drakma)
  :components ((:file "package")
               (:file "chickadee")
	       (:file "tweet")))

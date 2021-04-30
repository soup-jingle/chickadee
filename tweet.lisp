;;;; tweet.lisp

(in-package #:chickadee)

;; API reference: https://developer.twitter.com/en/docs/twitter-api/v1/tweets/post-and-engage/api-reference/post-statuses-update

(defclass tweet ()
  ((status ; required
    :initarg :status
    :initform nil
    :accessor status)
   (in-reply-to-status-id
    :initarg :in-reply-to-status-id
    :initform nil
    :accessor in-reply-to-status-id)
   (auto-populate-reply-metadata
    :initarg :auto-populate-reply-metadata
    :initform nil
    :accessor auto-populate-reply-metadata)
   (exclude-reply-user-ids
    :initarg :exclude-reply-user-ids
    :initform nil
    :accessor exclude-reply-user-ids)
   (attachment-url
    :initarg :attachment-url
    :initform nil
    :accessor attachment-url)
   (media-ids
    :initarg :media-ids
    :initform nil
    :accessor media-ids)
   (possibly-sensitive
    :initarg :possibly-sensitive
    :initform nil
    :accessor possibly-sensitive)
   (lat
    :initarg :lat
    :initform nil
    :accessor lat)
   (long
    :initarg :long
    :initform nil
    :accessor long)
   (place-id
    :initarg :place-id
    :initform nil
    :accessor place-id)
   (display-coordinates
    :initarg :display-coordinates
    :initform nil
    :accessor display-coordinates)
   (trim-user
    :initarg :trim-user
    :initform nil
    :accessor trim-user)
   (enable-dmcommands
    :initarg :enable-dmcommands
    :initform nil
    :accessor enable-dmcommands)
   (fail-dmcommands
    :initarg :fail-dmcommands
    :initform t
    :accessor fail-dmcommands)
   (card-uri
    :initarg :card-uri
    :initform nil
    :accessor card-uri)
   ))

;; (defclass place ())

(defmethod print-object ((tweet tweet) out)
  (with-slots (status in-reply-to-status-id auto-populate-reply-metadata exclude-reply-user-ids
		      attachment-url media-ids possibly-sensitive lat long place-id display-coordinates
		      trim-user enable-dmcommands fail-dmcommands card-uri) tweet
    (format t
	    (concatenate 'string
			 "in reply to: ~A~%"
			 "\"~A\"~%"
			 "auto populate reply metadata: ~A, "
			 "exclude reply user ids: ~A~%"
			 "attachment: ~A, "
			 "media ids: ~A~%"
			 "sensitive: ~A~%"
			 "coords: ~A,~A (display?: ~A), "
			 "place: ~A~%"
			 "trim user: ~A~%"
			 "enable dm commands: ~A, "
			 "fail dm commands: ~A~%"
			 "card-uri: ~A~%")
	    in-reply-to-status-id
	    status
	    auto-populate-reply-metadata
	    exclude-reply-user-ids
	    attachment-url
	    media-ids
	    possibly-sensitive
	    lat long display-coordinates
	    place-id
	    trim-user
	    enable-dmcommands
	    fail-dmcommands
	    card-uri)))


(defun make-tweet
    (status &key in-reply-to-status-id auto-populate-reply-metadata exclude-reply-user-ids
	      attachment-url media-ids possibly-sensitive lat long place-id
	      display-coordinates trim-user enable-dmcommands fail-dmcommands card-uri)
  (make-instance 'tweet
		 :status status
		 :in-reply-to-status-id in-reply-to-status-id
		 :auto-populate-reply-metadata auto-populate-reply-metadata
		 :exclude-reply-user-ids exclude-reply-user-ids
		 :attachment-url attachment-url
		 :media-ids media-ids
		 :possibly-sensitive possibly-sensitive
		 :lat lat
		 :long long
		 :place-id place-id
		 :display-coordinates display-coordinates
		 :trim-user trim-user
		 :enable-dmcommands enable-dmcommands
		 :fail-dmcommands fail-dmcommands
		 :card-uri card-uri))
  

;;;; tweet.lisp

(in-package #:chickadee)

;; API reference: https://developer.twitter.com/en/docs/twitter-api/v1/tweets/post-and-engage/api-reference/post-statuses-update

(defclass tweet ()
  ((status ; required
    :initarg status
    :initform nil
    :accessor status)
   (in-reply-to-status-id
    :initarg in-reply-to-status-id
    :initform nil
    :accessor in-reply-to-status-id)
   (auto-populate-reply-metadata
    :initarg auto-populate-reply-metadata
    :initform nil
    :accessor auto-populate-reply-metadata)
   (exclude-reply-user-ids
    :initarg exclude-reply-user-ids
    :initform nil
    :accessor exclude-reply-user-ids)
   (attachment-url
    :initarg attachment-url
    :initform nil
    :accessor attachment-url)
   (media-ids
    :initarg media-ids
    :initform nil
    :accessor media-ids)
   (possibly-sensitive
    :initarg possibly-sensitive
    :initform nil
    :accessor possibly-sensitive)
   (lat
    :initarg lat
    :initform nil
    :accessor lat)
   (long
    :initarg long
    :initform nil
    :accessor long)
   (place-id
    :initarg place-id
    :initform nil
    :accessor place-id)
   (display-coordinates
    :initarg display-coordinates
    :initform nil
    :accessor display-coordinates)
   (trim-user
    :initarg trim-user
    :initform nil
    :accessor trim-user)
   (enable-dmcommands
    :initarg enable-dmcommands
    :initform nil
    :accessor enable-dmcommands)
   (faildmcommancs
    :initarg faildmcommancs
    :initform t
    :accessor faildmcommancs)
   (card-uri
    :initarg card-uri
    :initform nil
    :accessor card-uri)
   ))

;; (defclass place ())

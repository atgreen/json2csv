;;;; json2csv.asd

(asdf:defsystem #:json2csv
  :description "Convert conveniently formatted json files to csv"
  :author "Anthony Green <green@redhat.com>"
  :license "MIT"
  :depends-on (#:cl-json)
  :serial t
  :components ((:file "json2csv")))


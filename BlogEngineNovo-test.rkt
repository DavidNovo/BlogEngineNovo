#lang racket/base
(require rackunit/text-ui)
(require rackunit "BlogEngineNovo.rkt")

(struct post (title body))

(define firstPost (post "First Title" "body of first post"))

(render-post firstPost)
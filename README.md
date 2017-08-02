# opener-docker-ner

Dockerfile for OpeNER named-entity recognition service.

Run and test locally:

```bash
docker run -p 8080:80 cwolff/opener-docker-language-identifier
docker run -p 8081:80 cwolff/opener-docker-tokenizer
docker run -p 8082:80 cwolff/opener-docker-pos-tagger
docker run -p 8083:80 cwolff/opener-docker-ner

text="I went to Rome last year. It was fantastic."
text="$(curl -d "input=$text" http://localhost:8080)"
text="$(curl -d "input=$text" http://localhost:8081)"
text="$(curl -d "input=$text" http://localhost:8082)"
curl -d "input=$text" http://localhost:8083
```

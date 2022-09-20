cd ydfinal
docker login -u weather0 -p Rhksfl08**dO
docker build -t test_kcy .
docker tag test_kcy weather0/test_kcy
docker push weather0/test_kcy
@echo end of batch
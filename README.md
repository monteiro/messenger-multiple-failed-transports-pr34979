# messenger-multiple-failed-transports-pr34979
Symfony Messenger Multiple Failed Transports Feature demo

## How to test if the multiple failed transports is working

### Execute script

`sh setup.sh`

### Generate messages in 2 transports that will go to different failed transports
`bin/console app:mymessage`
`bin/console app:mymessage2`

### Consume those messages and let them fail

`bin/console messenger:consume async async_another` 

### Go to the database (credentials in .env file)

If you verify the two messages are in two different failed transports configured in messenger.yaml.

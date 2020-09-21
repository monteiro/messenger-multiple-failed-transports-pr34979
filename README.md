# messenger-multiple-failed-transports-pr34979
Symfony Messenger Multiple Failed Transports Feature demo

| Q             | A
| ------------- | ---
| Branch?       | master
| Bug fix?      | no
| New feature?  | yes <!-- please update src/**/CHANGELOG.md files -->
| Deprecations? | no <!-- please update UPGRADE-*.md and src/**/CHANGELOG.md files -->
| Tickets       | Fix https://github.com/symfony/symfony/issues/34911
| License       | MIT
| Doc PR        | symfony/symfony-docs#13489

## Execute script to install all dependencies to execute this demo

```
git clone git@github.com:monteiro/messenger-multiple-failed-transports-pr34979.git
cd messenger-multiple-failed-transports-pr34979
sh setup.sh
```

## Generate messages in 2 transports that will go to different failed transports

```
bin/console app:mymessage
bin/console app:mymessage2
```

## Consume those messages and let them fail

```
bin/console messenger:consume async async_another
```

 

## Go to the database (credentials in .env file)

If you verify the two messages are in two different failed transports configured in messenger.yaml.

## Conclusion

You can play with the messenger.yaml to see all the different options!

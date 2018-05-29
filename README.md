# Boarditt
This project uses Rails, [Bulma](https://bulma.io/) CSS framework and Active Record to showcase the basics of a CRUD (Create, Read, Update and Delete) application in the form of a "Social network" with and upvote and downvote system.

The application can display content shared by the users; said users can manage their own content updating and deleting and comment on other users content.

## Use

Download repository, update dependencies with:

```
bundle install
```

In the base directory run with:

```
thin start -a 127.0.0.1 -p 3000 --ssl
```

After starting the server, the application can be used with an internet browser (https://localhost:3000). Application log can be seen with the following command in the application base directory:

```
tail -fn 100 log/development.log
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jljardon/boarditt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/version/1/4/code-of-conduct.html) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Boarditt project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jljardon/boarditt/blob/master/CODE_OF_CONDUCT.md).

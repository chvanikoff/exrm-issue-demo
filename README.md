Myapp
=====

Logger error reproducing steps:
=========

Run `git checkout v0.0.1` to checkout 0.0.1 release

Run rel.sh to deploy release 0.0.1 to ./tmp
Run `Myapp.sayhello` at iex shell
ctrl+d

Run `git checkout v0.0.2` to checkout 0.0.2 release

Run up.sh to perform upgrade to 0.0.2
Try running same command `Myapp.sayhello` again and observe the error

Only manual restarting :logger (which is shown as running) app helps:

```
iex(myapp@127.0.0.1)4> Myapp.sayhello
** (RuntimeError) Cannot use Logger, the :logger application is not running
    (logger) lib/logger/config.ex:50: Logger.Config.__data__/0
    (logger) lib/logger.ex:401: Logger.log/3
iex(myapp@127.0.0.1)5> Application.start :logger
{:error, {:already_started, :logger}}
iex(myapp@127.0.0.1)6> Application.stop :logger
:ok
iex(myapp@127.0.0.1)7> Application.start :logger
:ok
iex(myapp@127.0.0.1)8> Myapp.sayhello

14:39:11.853 [info]  Hello
:ok
iex(myapp@127.0.0.1)9>
```
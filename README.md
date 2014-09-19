# MonoBox
A [Vagrant](http://vagrantup.com) box for hacking 
[F#](http://www.fsharp.org) on [mono](http://www.mono-project.com).

In order to run this, you need to run from the top folder:

    vagrant up --provider=[virtualbox|vmware_fusion|vmware_desktop]

Next you shell into the newly created environment with `vagrant ssh`.

You can now build the hello.fs sample with `fsharpc -r:System.Data conn.fs`,
which should compile `conn.exe` for you in the home folder.
This should be set to executable already, and running it should confirm
connectivity to foundationdb.

Have fun hacking F# on Linux!

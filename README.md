# OutlookVsApple
This is a very quick example of how to set Outlook to handle mailto links instead of Mail, ics files instead of Calendar, and vcf contacts instead of Contacts.

# This is Nothing: How do I Use it?
All of the real work is done by duti, the luggage, and (optionally) outset. Think of this more as a demonstration of _how_ to do this, rather than a prebuilt package that you can just slipstream into your workflow. Trust me, it's better this way.

You need The [Luggage](https://github.com/unixorn/luggage) to build the package. I use Outset enough that I have added the relevent sections for Outset folders to my [luggage.local file](https://github.com/sheagcraig/dotfiles/blob/master/luggage.local), although that's basically just lifted from Outset's README.

[duti](https://github.com/moretension/duti/releases) is the binary that actually sets the preferences. I package it separately so that I can feed it other, unrelated handlers and update it independently of the configuration scripts. You can build it yourself or find a compiled binary [here](https://github.com/rtrouton/set_microsoft_outlook_as_default_application/blob/master/application_source_components_and_graphics/pre-built_components/duti.zip) thanks to Rich Trouton.

[Outset](https://github.com/chilcote/outset) is a tool to run scripts under various conditions. In this case, the communication-handler preferences are set to run once per-user by placing the script in the login-once folder. Outset has a ton of other uses, many of which will be posted over time here. As per duti, Outset is deployed as a separate package. Unlike duti, however, an AutoPkg recipe for Outset is already available that makes it super easy to add to your management system.

Alternately, the Makefile could be very moderately changed to handle deployment through other means. Casper admins, for example, could change the script to be a postinstall with `pack-script-postinstall` (rename the script to postinstall of course) and scope it to users.
#Redmine CC addresses plugin
##About
Allows the addition of generic CC entries to allow status messages to get sent to non-registered or other external members of a project / Redmine instance.

Forked from Nick Peelman's [CC Addresses](https://github.com/peelman/redmine_cc_addresses) plugin. Updated to work with Rails 4 and Redmine 3.x.

Check out Eric Davis's [Email Watchers](http://github.com/edavis10/redmine_email_watchers) for an alternative (Redmine 1.x).

###Features
+ One permission for viewing, creating and adding addresses on issues
+ Extends Redmine's existing Mailer model, rules like BCC recipients are obeyed
+ Validates email addresses on entry

###Version
+ Currently at 0.4
+ Requires Redmine 3.x or later

###Languages
+ English

###Usage
####Install
1. `cd [redmine]/vendor/plugins/`
2. `git clone https://github.com/ageis/redmine_cc_addresses.git`
3. `rake db:migrate_plugins`
4. `touch [redmine]/tmp/restart.txt`

####Enabling and Permissions
+ Needs to be enabled per-project in the Modules tab
+ Permissions are set via the traditional role method

##Author

Updated by Kevin Gallagher:

- kevin \[at\] freedom \[dot\] press
- [github.com/ageis](https://github.com/ageis)

Originally by Nick Peelman:

- nick \[at\] peelman \[dot\] us
- [peelman.us](http://peelman.us)
- [github.com/peelman](https://github.com/peelman)

##Credits
Extrapolated and hacked as a cross between:

+ Nick Peelman's Departments plugin [](https://github.com/peelman/redmine_departments)
+ Daniel Vandersluis's Redmine Resources plugin [](https://github.com/dvandersluis/redmine_resources)
+ Dave Thomas's CClist plugin [](http://github.com/peoplemerge/redmine-cclist-plugin)
+ Thanks to [edelgado](https://github.com/edelgado), [mtah](https://github.com/mtah), and [cforce](https://github.com/cforce) for their contributions!

Extra special thanks to Chris Moore (https://github.com/cdmwebs)

##Licensing
* This plugin is open-source and licensed under the "GNU General Public License v2" (GPL, http://www.gnu.org/licenses/old-licenses/gpl-2.0.html).
* &copy; 2010-2011 Nick Peelman


# Protection against mass assignment
# http://railspikes.com/2008/9/22/is-your-rails-application-safe-from-mass-assignment
ActiveRecord::Base.send(:attr_accessible, nil)


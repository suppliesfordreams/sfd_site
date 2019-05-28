require 'buttercms-ruby'

# If you added the Heroku Butter add-on, ENV["BUTTER_TOKEN"] will be defined.
# Otherwise, grab your token at https://buttercms.com/profile/ and set it below
ButterCMS::api_token = '2f9333f15a916a5c342223f9ca38dba681c5c946';

# Test mode can be used to setup a staging website for previewing content or for testing content during local development.
# ButterCMS::test_mode = true
# shellcheck shell=sh

Describe "joomla-version"

  It "shows the help message"
    When run ./joomla-version --help
    The status should be success
    The output should include "Usage"
  End

  It "exits with an error when running on a non-Joomla! directory"
    When run ./joomla-version /tmp
    The status should be failure
    The error should include "joomla-version: version file not found"
  End

  Describe "Joomla 1.x"
    It "prints the short version string"
      When run ./joomla-version spec/fixtures/1.5.26
      The status should be success
      The output should eq "1.5.26"
    End

    It "prints the long version string"
      When run ./joomla-version --long spec/fixtures/1.5.26
      The status should be success
      The output should eq "Joomla! 1.5.26 Stable [ senu takaa ama busani ] 27-March-2012 18:00 GMT"
    End
  End

End

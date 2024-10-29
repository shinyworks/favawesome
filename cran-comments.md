# Resubmission

This is a resubmission. In this version I have:

* Updated 'Shiny' to 'shiny' in the DESCRIPTION.

* Added a URL for 'fontawesome' to the DESCRIPTION.

* Added `use_favawesome_standalone()` function for app developers to take 
  advantage of the package without adding a dependency to this package. This 
  function intentionally does not include an example, since usage is trivial (no 
  arguments) and calling it writes to the working directory.

While this package is very small, I consider it feature-complete. It 
intentionally has a very small footprint to make it easy to use in deployed
shiny apps.

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

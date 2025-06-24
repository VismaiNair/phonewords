## 1.0.0

- Initial version.

## 1.1.0

- Bug Fixes:

  - Function not found (GitHub Issues #2)
  - RangeError Exception (GitHub Issues #1)

- Added Capabilities:

  - Capability to convert _all_ characters to numeric, not just the last four

- Important Renaming: `findNumberFromWord()` renamed to `numberFromString()`

- Feature Removal: phonewords no longer breaks the phone number into chunks seperated by an en dash. This feature will be added again at the next version.

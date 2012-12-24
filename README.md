Sublime AS3 Sample Project
=========

This is a sample project to be used with the [Sublime AS3 Bundle](https://github.com/jrmoretti/SublimeAS3)

Build.yaml
-
This is the only required file for the bundle to run.

Parameters:
- 
```yaml
---
# Default file to launch... can be an HTML or a SWF file
# Use the extras parameter to add compiler options.
default:
    - debug: false
      open: bin/Main.swf
      extras: -use-network=false -static-link-runtime-shared-libraries

# The folder where your SWC's are stored.
library-path:
    - swc/

# Sources for your as files
source-path:
    - libs/
    - src/

# Classes to compile / output. Use the 'exclude' parameter to exclude a class from the dependencies. 
applications:
    - class: src/Main.as
      output: bin/Main.swf
      exclude: src/com/jaymoretti/utils/log/logger.as
      
    - class: src/MainLoader.as
      output: bin/MainLoader.swf
      

# Generate ASDocs from project. 
asdoc:
     title: "My ActionScript project"
     footer: "My ActionScript project footer"
     output: docs/
     exclude-dirs: 
       - source/classes/caurina/`
     
```

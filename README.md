# tablabs
Stata .ado for one-way and two-way tabulation with labels

## Syntax

tablabels varname1 [varname2] [if] [in] [weight] [, options]

    options                  Description
    -------------------------------------------------------------------------------------------------------
    Main
      full              reports frequency, percentage and the traditional tabulation with tabs
    -------------------------------------------------------------------------------------------------------
    
## Description

    tablabs produces one- and two-way tables adding the numbers (coding) associated to the labels of values
    in a variable. By default, only frequencies are produced by the command, but the option full can be 
    used to obtain also the percentages and an additional table with the traditional tabulation (tabs)
 
 
## Examples

    -------------------------------------------------------------------------------------------------------
    Setup
        . sysuse census

    One-way table of frequencies with values of coding for the region labels
        . tablabs region
    
    Compare the previous result with the traditional tab command
        . tab region
    
    One-way table of frequencies with additional output
        . tablabs region, full

    -------------------------------------------------------------------------------------------------------
    Setup
        . sysuse auto, clear
        . tab headroom
        . tablabs foreign
    
    Two-way table with values of labels for foreign
        . tablabs headroom foreign
    -------------------------------------------------------------------------------------------------------

   




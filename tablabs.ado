program tablabs
*! Quick and dirty frequency tabs with labels
*! v0.6 - (c)Rolando Gonzales Martinez
	version 17.0
	syntax varlist [if] [in] [, full]
	preserve
	numlabel , add
		if "`full'" == "" {
			table `varlist' ()
		}
		else {
			table `varlist' (), statistic(frequency) statistic(percent)
			tab `varlist'   
		}
	restore
end
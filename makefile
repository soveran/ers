ers: .FORCE
	@cat ers.awk | AWK=`which awk` awk '{ sub("%shebang%", ENVIRON["AWK"]); print $0 }' > ers
	@chmod +x ers

.FORCE:

assertEquals(expected, actual) {
    if (actual == expected) {
        return
    }
    err("actual value: " actual "`nexpected: " expected getStack())
}

getStack( offset := -2 ) { ;turns the results of the generateStack function into human readeable text
	stack := generateStack( offset )
	str := "`n`n"
	for each, entry in stack
	    if (each = 1) {
	        continue ; skip the caller itself
	    }
;		str .= "line: " . entry.line . "`tfunc: " . entry.what "`tfile: " getFileName(entry.file) "`n"
		str .= getFileName(entry.file) " : " entry.line "`n"
	return str
}

getFileName(filePath) {
    pathElements := StrSplit(filePath, "\")
    return pathElements[pathElements.MaxIndex()]
}

generateStack( offset := -1 ) { ;returns the stack as an Array of exception objects - the first array is the function most recently called.
	if ( A_IsCompiled )
		Throw exception( "Cannot access stack with the exception function" )
	stack := []
	While ( exData := exception("", -(A_Index-offset)) ).what != -(A_Index-offset)
		stack.push( exData )
	return stack
}
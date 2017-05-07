require(haven)
require(labelled)
require(pander)
require(stringr)

columnDescriptions <- function (datatable) {

	variables <- variable.names(datatable)

	variable.vector <- c()
	description.vector <- c()
	label.formatted.vector <- c()

	for (v in variables) {

		description <- attr(datatable[[v]], "label")
		label <- attr(datatable[[v]], "labels")
		label.formatted <- paste("*", paste(names(label),label,sep=": "),collapse=" <br> ")

		if (is.null(description)) {
			description <- ""
		}

		if (is.null(label)) {
			label.formatted <- "No discrete classes/Numeric"
		}

		

		variable.vector <- c(variable.vector, v)
		description.vector <- c(description.vector, description)
		label.formatted.vector <- c(label.formatted.vector, label.formatted)











	}

	d <- data.frame(Column=variable.vector, Description=description.vector, Labels=label.formatted.vector,
		stringsAsFactors=FALSE)
	d

}
for (variable in sequence) {
	# votre code
}

whle (condition) {
	# le code
}

if (condition) {
	# faire ceci
} else {
	# faire cela
}

ma_fonction <- function(paramètres) {
	# faire plein de choses
	return resultat
}

# faire un exemple complet avec toutes les instructions

pretty_print <- function (elements) {

	if ( is.null(elements) ) {
	
		print('Erreur: elements == null')
	
	} else {

		for (elt in elements) {
			print('> ', elt)
		}
	}
}
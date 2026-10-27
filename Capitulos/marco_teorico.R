
# 1. Encabezados del documento ------------------------------------------------

titulo_marco <- "Marco teórico"


# 2. Texto del marco teórico --------------------------------------------------
# Cada sección tiene un título (nivel APA 2: negrita, alineado a la izquierda)
# y uno o más párrafos. Las citas siguen el formato autor-año de APA 7.

marco_teorico <- list(
  
  list(
    titulo = "Productividad y diferencias de producción entre territorios",
    parrafos = c(
      "Lo primero que hay que aclarar es qué entendemos por productividad. Una forma sencilla es la productividad parcial, que mide cuánto se produce por cada unidad de un insumo, por ejemplo el valor agregado por hectárea o por trabajador. Otra más completa es la productividad total de los factores (PTF), que mira cuánto se produce una vez que ya se tomó en cuenta todo lo que se puso en el proceso productivo.",
      "Esta idea viene del modelo de Solow (1956, 1957), donde la producción depende del capital, el trabajo y un factor *A* que representa la tecnología y la eficiencia con que se combinan los insumos. Lo interesante es que *A* no se observa directamente, sino que aparece como el residuo, es decir, la parte de la producción que los insumos no alcanzan a explicar. Hall y Jones (1999) usaron esta lógica para mostrar que las grandes diferencias de producto por trabajador entre países se deben más a diferencias de productividad que a diferencias en la acumulación de capital. Nosotros llevamos ese mismo razonamiento a una escala más pequeña: si dos provincias tienen insumos parecidos y una produce más, la explicación hay que buscarla en la tecnología, el conocimiento y las condiciones que rodean al productor."
    )
  ),
  
  list(
    titulo = "Capital humano y agricultura tradicional",
    parrafos = c(
      "Schultz (1964) planteó que el agricultor tradicional no es irracional ni flojo, sino que es eficiente con los recursos que tiene. Si su producción es baja es porque le faltan cosas nuevas: semillas mejoradas, riego, insumos modernos y, sobre todo, conocimiento para usarlos. Según esta teoría, la educación y la capacitación del productor son clave porque le permiten reconocer y aprovechar las nuevas tecnologías.",
      "Esto encaja muy bien con lo que vimos en la introducción. Si más de la mitad de los productores ecuatorianos solo tiene primaria (El Diario, 2025), es razonable pensar que las provincias con productores más educados o con más capacitación podrían estar adoptando mejores prácticas. Por eso incluimos la escolaridad del productor como una de las variables de interés."
    )
  ),
  
  list(
    titulo = "Innovación y adopción de tecnología",
    parrafos = c(
      "Hayami y Ruttan (1971) sostienen que la tecnología agrícola no cae del cielo, sino que se desarrolla y se adopta según lo que cada zona necesita y tiene a mano. Donde la tierra es escasa se buscan técnicas que aumenten el rendimiento por hectárea, y donde falta mano de obra se busca mecanizar. En otras palabras, la productividad depende de si el entorno facilita que esas innovaciones lleguen al productor.",
      "Feder et al. (1985) revisaron por qué los agricultores de países en desarrollo adoptan o no una innovación y encontraron que pesan factores como el acceso a crédito, la información disponible (por ejemplo, la asistencia técnica), el riesgo y el tamaño de la finca. De aquí sacamos tres variables para el modelo: el crédito agropecuario, el porcentaje de productores con asistencia técnica y el riego, que es una de las tecnologías que más cambia el rendimiento de un cultivo."
    )
  ),
  
  list(
    titulo = "Infraestructura rural",
    parrafos = c(
      "Fan et al. (2000), en un estudio sobre la India rural, encontraron que el gasto público en carreteras, riego y educación fue de lo que más aumentó la productividad agrícola y redujo la pobreza. La explicación es bastante intuitiva: una vía en buen estado baja el costo de llevar los insumos y de sacar la cosecha al mercado, y el riego reduce la dependencia de la lluvia. Por eso incluimos los kilómetros de vías por provincia como variable de control y consideramos que pueden ayudar a explicar por qué dos provincias con recursos parecidos terminan produciendo distinto."
    )
  ),
  
  list(
    titulo = "Cómo vincular la teoría con nuestro modelo",
    parrafos = c(
      "Juntando las teorías anteriores, planteamos una ecuación de panel en la que la productividad de cada provincia *i* en el año *t* depende de las variables de interés y de un conjunto de controles (ver Ecuación 1).",
      # Ecuación numerada a la derecha, como pide APA 7
      r"($$\ln(Productividad_{it}) = \beta_0 + \beta_1 Riego_{it} + \beta_2 Credito_{it} + \beta_3 AsistTec_{it} + \beta_4 Escolaridad_{it} + \gamma' X_{it} + \alpha_i + \lambda_t + \varepsilon_{it} \tag{1}$$)",
      "En esta ecuación, *X* es el vector de controles, $\\alpha_i$ son los efectos fijos de cada provincia, $\\lambda_t$ los efectos de cada año y $\\varepsilon_{it}$ el error. La Tabla 1 resume las variables, el signo que esperamos y la teoría que lo respalda."
    )
  )
)

# Párrafo de cierre (sin subtítulo)
cierre_marco <- "Con este marco, la lógica del trabajo queda clara: si las provincias difieren en su productividad es porque difieren en el acceso a tecnología, conocimiento e infraestructura, y eso es justo lo que el modelo nos permite medir."


# 3. Tabla 1 (formato APA 7) -------------------------------------------------
# APA 7: "Tabla 1" en negrita arriba, título en cursiva en la línea siguiente,
# sin líneas verticales, y una nota debajo que empieza con "Nota." en cursiva.

tabla1 <- data.frame(
  Variable = c(
    "Productividad (dependiente)", "Riego", "Crédito", "Asistencia técnica",
    "Escolaridad", "Vías", "Pobreza rural", "Tamaño de las UPA",
    "Precipitación y altitud"
  ),
  Indicador = c(
    "VAB agropecuario por hectárea cultivada",
    "% de superficie cultivada con riego",
    "Crédito agropecuario por hectárea",
    "% de productores con asistencia técnica",
    "Años de estudio del productor",
    "Km de red vial por provincia",
    "% de población rural pobre",
    "Superficie promedio por unidad productiva",
    "Milímetros de lluvia y metros sobre el nivel del mar"
  ),
  `Signo esperado` = c(
    "—", "Positivo", "Positivo", "Positivo", "Positivo", "Positivo",
    "Negativo", "Ambiguo", "Ambiguo"
  ),
  `Base teórica` = c(
    "Solow (1956, 1957); Hall y Jones (1999)",
    "Feder et al. (1985); Fan et al. (2000)",
    "Feder et al. (1985)",
    "Hayami y Ruttan (1971); Feder et al. (1985)",
    "Schultz (1964)",
    "Fan et al. (2000)",
    "Schultz (1964)",
    "Feder et al. (1985)",
    "Solow (1956, 1957)"
  ),
  check.names = FALSE,
  stringsAsFactors = FALSE
)

tabla1_numero <- "Tabla 1"
tabla1_titulo <- "Variables del modelo, signo esperado y base teórica"
tabla1_nota   <- "VAB = valor agregado bruto; UPA = unidad de producción agropecuaria. Elaboración propia con base en la literatura revisada."


# 4. Referencias (APA 7, orden alfabético, sangría francesa al renderizar) ----
# Los asteriscos marcan la cursiva (títulos de libros y de revistas, y el
# número de volumen).

referencias <- c(
  "El Diario. (2025, 22 de mayo). Manabí concentra el 20,7 % del ganado vacuno nacional y el 51,4 % de la producción de plátano. *El Diario*. https://www.eldiario.ec/negocios/manabi-concentra-el-207-del-ganado-vacuno-nacional-y-el-514-de-la-produccion-de-platano-22052025/",
  "Fan, S., Hazell, P., & Thorat, S. (2000). Government spending, growth and poverty in rural India. *American Journal of Agricultural Economics, 82*(4), 1038–1051. https://doi.org/10.1111/0002-9092.00101",
  "Feder, G., Just, R. E., & Zilberman, D. (1985). Adoption of agricultural innovations in developing countries: A survey. *Economic Development and Cultural Change, 33*(2), 255–298. https://doi.org/10.1086/451461",
  "Hall, R. E., & Jones, C. I. (1999). Why do some countries produce so much more output per worker than others? *The Quarterly Journal of Economics, 114*(1), 83–116. https://doi.org/10.1162/003355399555954",
  "Hayami, Y., & Ruttan, V. W. (1971). *Agricultural development: An international perspective*. Johns Hopkins University Press.",
  "Instituto Nacional de Estadística y Censos. (2020). *Información agroambiental y tecnificación agropecuaria 2020*. https://www.ecuadorencifras.gob.ec/informacion-agroambiental-y-tecnificacion-agropecuaria-2020/",
  "Primicias. (2025). Radiografía del sector agroalimentario ecuatoriano, que sostiene el 15,4 % del PIB del país. *Primicias Gestión*. https://www.primicias.ec/revistagestion/analisis/radiografia-sector-agroalimentario-ecuatoriano-que-sostiene-15-4-pib-pais-111614/",
  "Schultz, T. W. (1964). *Transforming traditional agriculture*. Yale University Press.",
  "Solow, R. M. (1956). A contribution to the theory of economic growth. *The Quarterly Journal of Economics, 70*(1), 65–94. https://doi.org/10.2307/1884513",
  "Solow, R. M. (1957). Technical change and the aggregate production function. *The Review of Economics and Statistics, 39*(3), 312–320. https://doi.org/10.2307/1926047"
)


# 5. Funciones para imprimir ---------------------------------------------------

# Imprime la Tabla 1 con formato APA (en el .qmd sale como tabla; en consola,
# como texto).
imprimir_tabla1 <- function() {
  if (isTRUE(getOption("knitr.in.progress")) &&
      requireNamespace("knitr", quietly = TRUE)) {
    cat("\n\n**", tabla1_numero, "**\n\n", sep = "")
    cat("*", tabla1_titulo, "*\n\n", sep = "")
    print(knitr::kable(tabla1, align = "llcl"))
    cat("\n\n*Nota.* ", tabla1_nota, "\n\n", sep = "")
  } else {
    cat("\n", tabla1_numero, "\n", tabla1_titulo, "\n\n", sep = "")
    print(tabla1, row.names = FALSE, right = FALSE)
    cat("\nNota. ", tabla1_nota, "\n\n", sep = "")
  }
}

# Imprime todo el marco teórico en orden: título, secciones, tabla, cierre y
# referencias.
imprimir_marco <- function() {
  cat("\n## ", titulo_marco, "\n\n", sep = "")
  for (i in seq_along(marco_teorico)) {
    sec <- marco_teorico[[i]]
    cat("### ", sec$titulo, "\n\n", sep = "")
    for (p in sec$parrafos) cat(p, "\n\n", sep = "")
    # La Tabla 1 va justo después de la última sección, que la presenta
    if (i == length(marco_teorico)) imprimir_tabla1()
  }
  cat(cierre_marco, "\n\n", sep = "")
  cat("## Referencias\n\n")
  for (r in referencias) cat(r, "\n\n", sep = "")
  invisible(NULL)
}

# Si quieres solo la lista de referencias:
imprimir_referencias <- function() {
  for (r in referencias) cat(r, "\n\n", sep = "")
  invisible(NULL)
}
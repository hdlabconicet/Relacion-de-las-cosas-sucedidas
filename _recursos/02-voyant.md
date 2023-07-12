---
layout: page
title: Análisis textual automatizado
permalink: /voyant/
type: extras
description: Análisis textual automatizado con Voyant Tools
icon: bar-chart
---

Exploración del contenido de _Relación de las cosas sucedidas en el Río de la Plata_ con [Voyant Tools](https://voyant-tools.org/), una herramienta de lectura distante y análisis textual automatizado de textos digitales.

Las siguientes secciones presentan cuadros interactivos. En cada panel, deslice el cursor sobre la esquina derecha de la barra superior para mostrar las opciones. El ícono <i class="fa-solid fa-question" style="color:#157fcc;"></i> permite acceder a una explicación de la herramienta usada en cada panel. El ícono <i class="fa-solid fa-toggle-on" style="color:#157fcc;"></i> permite modificar las opciones de la herramienta.

## Nube de palabras

Palabras más frecuentes del texto de Pero Hernández. Deslice el cursor sobre las palabras para ver la frecuencia en el texto.

<iframe class="py-3" src='https://voyant-tools.org/tool/Cirrus/?palette=extjs&stopList=keywords-322e4e55f0821d3a82b0be50ad01f862&whiteList=&visible=155&fontFamily=LatoWeb&corpus=04f08b4c9b35780a7f20866f4f296e0c&lang=es&stopList=keywords-322e4e55f0821d3a82b0be50ad01f862'></iframe>

Deslice la barra de términos para aumentar o disminuir la cantidad de palabras en la nube.

## Contextos

Contexto enunciativo de las palabras más frecuentes del texto. Puede modificar por frecuencia ascendente o descendente.

<iframe class="py-3" src="https://voyant-tools.org/tool/Contexts/?palette=extjs&lang=es&stopList=keywords-322e4e55f0821d3a82b0be50ad01f862&query=gobernador&corpus=04f08b4c9b35780a7f20866f4f296e0c"></iframe>

Modifique el término a consultar desde el menú inferior izquierdo.

## Tendencias

Evolución de la frecuencia de los principales términos de _Relación de las cosas sucedidas en el Río de la Plata_.

<iframe class="py-3" src='https://voyant-tools.org/tool/Trends/?palette=extjs&lang=es&stopList=keywords-322e4e55f0821d3a82b0be50ad01f862&query=gobernador&query=irala&query=indios&query=tierra&mode=document&corpus=04f08b4c9b35780a7f20866f4f296e0c'></iframe>

## Grafo de colocaciones

Deslice el cursor sobre las palabras de este grafo de colocaciones para consultar la frecuencia de cada par de términos.

<iframe class="py-3" src='https://voyant-tools.org/tool/CollocatesGraph/?palette=extjs&lang=es&stopList=keywords-322e4e55f0821d3a82b0be50ad01f862&query=gobernador&query=indios&query=irala&mode=corpus&corpus=04f08b4c9b35780a7f20866f4f296e0c'></iframe>

<div class="py-4 mt-4"><p>Visite <a href="https://voyant-tools.org/?corpus=04f08b4c9b35780a7f20866f4f296e0c&lang=es&stopList=keywords-322e4e55f0821d3a82b0be50ad01f862&panels=streamgraph,reader,corpuscollocates,summary,bubblelines&palette=extjs" target="_blank">este link</a> para descubrir <i>Relación de las cosas sucedidas en el Río de la Plata</i> a la luz de otras herramientas ofrecidas por Voyant Tools: <a href="https://voyant-tools.org/?corpus=04f08b4c9b35780a7f20866f4f296e0c&palette=extjs&lang=es&stopList=keywords-322e4e55f0821d3a82b0be50ad01f862&view=Bubbles" target="_blank">burbujas de términos</a>, <a href="https://voyant-tools.org/?corpus=04f08b4c9b35780a7f20866f4f296e0c&palette=extjs&lang=es&stopList=keywords-322e4e55f0821d3a82b0be50ad01f862&view=Veliza" target="_blank">Veliza</a>, <a href="https://voyant-tools.org/?corpus=04f08b4c9b35780a7f20866f4f296e0c&palette=extjs&lang=es&stopList=keywords-322e4e55f0821d3a82b0be50ad01f862&view=TextualArc" target="_blank">arco textual</a> y muchas más.</p></div>

---
layout: page
title: Análisis textual automatizado
permalink: /voyant/
type: extras
description: Estadísticas textuales y visualizaciones del texto realizadas con Voyant Tools
icon: bar-chart
---

Exploración del contenido de _Relación de las cosas sucedidas en el Río de la Plata_ con [Voyant Tools](https://voyant-tools.org/), una herramienta de lectura distante y análisis estadístico de textos digitales.

Las siguientes secciones presentan cuadros interactivos. En cada panel, deslice el cursor sobre la esquina derecha de la barra superior para mostrar las opciones. El ícono <i class="fa-solid fa-question" style="color:#157fcc;"></i> permite acceder a una explicación de la herramienta usada en cada panel. El ícono <i class="fa-solid fa-toggle-on" style="color:#157fcc;"></i> permite modificar las opciones de la herramienta.

## Nube de palabras

Palabras más frecuentes del texto de Pero Hernández. Deslice el cursor sobre las palabras para ver la frecuencia en el texto.

<iframe class="py-3" src='https://service.sadilar.org/voyant/tool/Cirrus/?palette=Set1&stopList=keywords-9c79e83d2cc42939d62581a127dc5aa3&whiteList=&corpus=765d53fd4253557c46ee09cf707926b4'></iframe>

Deslice la barra de términos para aumentar o disminuir la cantidad de palabras en la nube.

## Contextos

Contexto enunciativo de las palabras más frecuentes del texto. Puede modificar por frecuencia ascendente o descendente.

<iframe class="py-3" src="https://service.sadilar.org/voyant/tool/Contexts/?palette=Set1&stopList=keywords-9c79e83d2cc42939d62581a127dc5aa3&query=%C3%A9&corpus=765d53fd4253557c46ee09cf707926b4"></iframe>

Modifique el término a consultar desde el menú inferior izquierdo.

## Tendencias

Evolución de la frecuencia de los principales términos de _Relación de las cosas sucedidas en el Río de la Plata_.

<iframe class="py-3" src='https://service.sadilar.org/voyant/tool/Trends/?palette=Set1&stopList=keywords-9c79e83d2cc42939d62581a127dc5aa3&query=gobernador&query=dicho&query=irala&query=domingo&query=tierra&mode=document&corpus=765d53fd4253557c46ee09cf707926b4'></iframe>

## Grafo de colocaciones

Deslice el cursor sobre las palabras de este grafo de colocaciones para consultar la frecuencia de cada par de términos.

<iframe class="py-3" src='https://service.sadilar.org/voyant/tool/Links/?palette=Set1&stopList=keywords-9c79e83d2cc42939d62581a127dc5aa3&query=gobernador&query=dicho&query=irala&corpus=765d53fd4253557c46ee09cf707926b4'></iframe>

<div class="py-4 mt-4"><p>Visite <a href="https://service.sadilar.org/voyant/?palette=Set1&stopList=keywords-9c79e83d2cc42939d62581a127dc5aa3&panels=links%2Creader%2Ctrends%2Csummary%2Ccontexts&corpus=765d53fd4253557c46ee09cf707926b4" target="_blank">este link</a> para descubrir <i>Relación de las cosas sucedidas en el Río de la Plata</i> a la luz de otras herramientas ofrecidas por Voyant Tools: <a href="https://service.sadilar.org/voyant/tool/Bubbles/?palette=Set1&stopList=keywords-9c79e83d2cc42939d62581a127dc5aa3&corpus=765d53fd4253557c46ee09cf707926b4" target="_blank">burbujas de términos</a>, <a href="https://service.sadilar.org/voyant/tool/TextualArc/?palette=Set1&stopList=keywords-9c79e83d2cc42939d62581a127dc5aa3&view=bubbles&corpus=765d53fd4253557c46ee09cf707926b4" target="_blank">arco textual</a> y muchas más.</p></div>

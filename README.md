# jPlatformUnifiedInsertPlus


## Insertion unifiée

La mécanique d'insertion unifiée permet de proposer à l'utilisateur l'insertion rapide de différents types de contenus.

Lors d'un ajout unifié dans un champ wysiwyg vers un contenu intégré, celui-ci est affiché avec la règle de gabarit suivant :
- Content => embed -> full
- Portlet => box -> full


Les contenus intégrés sont ajoutés dans le wysiwyg avec en JHtml :``<jalios:media data-jalios-source="INFO_CONTENU" /``

Les contenus sous forme de simple lien sont au format : ``<jalios:link data-jalios-id="ID_CONTENU" /``

## Selection d'un contenu unifié

Propriété :
+ unified-insert.items.content.jsp: plugins/UnifiedInsertPlusPlugin/jsp/content/unifiedInsertContent.jsp
+ unified-insert.items.content.icon: glyph: glyphicons-article

Fichier :
+ plugins/UnifiedInsertPlusPlugin/jsp/content/unifiedInsertContent.jsp

Fichier natif modifié 
- work/doPubList.jsp
(Modification de la ligne 299 : ajout de data-jalios-source="<%= itPub.getId() %> )

## Contenus unifiés

- Youtube : <jalios:media data-jalios-source="URL_VIDEO_YOUTUBE" />
- Calameo
- SlideShare
- Flick
- SoundCloud
- Fragment HTML (seuls les utilisateurs habilités pour contribuer ce type de contenu)
- Liste de documents (Type de contenu repris de l'intranet) 
- Liste de sites
- Portlet


### Liste de documents / sites
L'idée retenue est de construire les listes de documents / sites web via des portlets requetes/itération, en construisant la requête ad hoc, ou en indiquant explicitement les contenus via l'onglet avancé (Champ multivalué "Premières publications").



### Calameo

Utilise l'url du 'contenu sur internet' pour la contribution.

Fichier :
+ plugins/UnifiedInsertPlusPlugin/jsp/media/url/mediaTemplateCalameo.jsp


### Flikr

Utilise l'url du 'contenu sur internet' pour la contribution.

Fichier :
+ plugins/UnifiedInsertPlusPlugin/jsp/media/url/mediaTemplateFlickr.jsp

L'idée est de se passer progressivement des diaporamas Flickr pour les internaliser dans jPlatform sous forme de carousel.

### SoundCloud

Utilise l'url du 'contenu sur internet' pour la contribution.

Fichier :
+ plugins/UnifiedInsertPlusPlugin/jsp/media/url/mediaTemplateSoundCloud.jsp

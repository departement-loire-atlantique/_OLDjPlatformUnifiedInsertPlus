# jPlatformUnifiedInsertPlus


## Ajout unifiée

Lors d'un ajout unifié dans un champ wysiwyg vers un contenu celui-ci est affiché avec la règle de gabarit suivant :
- Content => embed -> full
- Portlet => box -> full

Les contenus sont ajoutés dans le wysiwyg avec en JHtml : <jalios:media data-jalios-source="INFO_CONTENU" />

Les contenus sous forme de simple lien sont au format : <jalios:link data-jalios-id="ID_CONTENU" />

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


### TODO Liste de documents

### Calameo

Utilise l'url du 'contenu sur internet' pour la contribution.

Fichier :
+ plugins/UnifiedInsertPlusPlugin/jsp/media/url/mediaTemplateCalameo.jsp


### Flikr

Utilise l'url du 'contenu sur internet' pour la contribution.

Fichier :
+ plugins/UnifiedInsertPlusPlugin/jsp/media/url/mediaTemplateFlickr.jsp




#### Back to [Home](https://brclar15.github.io/tabulaCapitolina/)
#### Back to [Digital Editing page](digitalEditing.md)



# Editorial Practices

## Importance of a Diplomatic Digital Edition

I have created a diplomatic digital edition of the Tabula Capitolina by working with digital open-access photography. A diplomatic edition is one that seeks to represent every mark that appears on an artifact faithfully, in order to provide an authentic reading of the object. Modern corrections and rules of orthography are not imposed onto the text, in order to avoid altering the original form. This allows a reader of the edition to have the purest experience possible with the artifact, free from modern "corrections" or additions. For example, I have edited the text groups found on the Tabula completely in lower case and without what is considered proper accentuation, since this is how the text appears on the stone. My only additions are found in the TEI `supplied` elements. These additions are meant to make my editions readable, and are taken from printed editions of the Tabula, such as the Inscriptiones Graecae volume 14 and Petrain's *Homer in Stone*.

One important innovation of my edition is that every text piece is linked directly to the digital photography of the Tabula. This is an improvement upon even the more recent treatments of any of the Tabulae because it preserves the relationship between the text and the artifact. For an object as complex as the Tabula Capitolina, it is not enough to print an edition of the tex that is accompanied by images of the stone, no matter how detailed the images may be. A digital edition with linked photography is essential due to the nature of the Tabula. The reader must get a sense of where the texts are on the stone, and how they relate to the surrounding images.

A further drawback of the various print editions of the Tabula is that they are static and rigid. Nothing could be more at odds with the complexity of the Tabulae than to bind them down to being read in one specific and predetermined way. The latest scholars of the Tabulae both stress the fact that the stones are meant to be read in a variety of ways and directions[^1]. Squire goes so far as to even relate them to "choose your own adventure" books. The stone can be read following the narrative chronology of the epics, starting with the *Iliad* bands, then progressing through the *Aethiopis* and the *Ilias Parva*, and ending at the *Iliupersis*. Or, since the *Iliupersis* is the central block, the reader's eye may be drawn there first, and they can explore the stone as their gaze wanders in any direction. Still another approach would be to start with the preface and table of contents on the stone, progress down to the *Aethiopis* and the *Ilias Parva*, back up to the *Iliupersis*, and then contemplate how the Iliadic scenes precipitate all of these later events. A digital edition of the Tabula Capitolina is superior to a print edition because it can be changed and reordered however the reader likes. I have ordered my XML edition in a particular way, but, thanks to the digital format, that does not have to be the only output. While my readers are technically limited to the handful of XSLT transforms that I have done on my edition, they are free to take my edition and reorder it however they like. 

While it was helpful to this project, my edition is also an improvement upon the edition done for the [Inscriptiones Graecae](http://epigraphy.packhum.org/text/141269?&bookid=26&location=8) because of these practices. While the online edition of the IG does let the reader toggle supplied characters on and off, it is not a diplomatic edition[^2]. Further, it is not linked in any way to photography of the stone, causing the reader to rely entirely on the editor. With my edition, readers are free to compare my edition directly to the photography of the stone, and as a result, are free to agree or disagree with my readings and my markup. 

	[1] : See Petrain's Chapter 1, and the notably thematically relevant discussion of the Temple of Juno 
	in *Aeneid* 1 and Squire 2011 Chapter 5 for a discussion of the "magic squares"
	on the obverse of several Tabulae

	[2] : The presence of all of the book letters for the pictorial bands 
	of *Iliad* 13 through 24 reveal that the IG supplied more than they claim 
	to have added, since they are absent for books 14 and 20 through 24


## XML Editing

Each line of text in my edition is wrapped in a TEI `ab` element, for anonymous block. These elements are meant to represent the physical layout of the stone. They allow for the text to end when the physical line on the stone ends. When words run over from one line to the next, as they often do on the stele, I have wrapped the letters in a `w` element with the attributes `part="I"` or `part="F"` for initial and final. I have tagged the personal and ethnic names according to the Homer Multitext (HMT) [guidelines](http://homermultitext.github.io/hmt-docs/) and using the HMT [authority lists](https://github.com/homermultitext/hmt-authlists/tree/master/data)

First, I began with the hexameter preface found in between the scenes of the *Iliupersis* and the *Aethiopis*. In its original state, it would have read τεχνην την θεοδωρηον μαθε ταξιν Ομηρος οφρα δαεις πασης μετρον εχης σοφιας. This verse serves as a prefatory introduction to the entire Tabula with the direct imperative addressed to the reader. It explains what is on the stone, as well as the benefits for studying it. While the stone now begins with the ρηον in θεοδωρηον, due to the damage, it is possible to restore the rest of the text confidently due to other similar Theodorean ascription on five other Tabulae[^3]. 

Next, I have placed the text group that gives somewhat of a table of contents or sources for this tabula. This appears in the center of the scenes of the *Iliupersis*, which would have been roughly in the center of the stone in its original form. It may be tempting to take the text citing the *Iliupersis* as a stand-alone caption for the central block of images from this epic, due to the separation caused by the ship carvings. However, I have placed both this reference as well as the problematic τρωικος with the rest of the list of titles[The τρωικος does not appear to modify any expressed noun, since the titles the works are feminine. Pertain translate the first five words of the table of contents as "*Sack of Troy* according to Stesichorus. Trojan." He rejects both Ulrich von Wilamowitz-Moellendorff's theory that it is meant to stand for Τρωϊκὸς κύκολς, as this is not a concept attested in antiquity, at least through the combination of these two words, as well as Jahn's theory that it is meant to be taken with an understood πίναξ, since it oversimplifies this complex artifact. Instead, he argues that it is perfectly in keeping with the nature of the Tabula for the artist to leave it ambiguous and let it wander over the whole stone[^4]. They form one cohesive group that provides a context within which to place the accompanying figures and texts. 

Then, I have placed the text of the stele with the prose summary of *Iliad* 7 through 24. Here I have extensively used a variety of TEI tags, such as `damage` where the stone has been chipped away, `unclear` when one can make out certain strokes, but needs to consult a printed edition to determine the letter, and `supplied` where it is impossible to make out the strokes of the letter due to wear on the stone. My edition of this text was made possible largely thanks to altered versions of my original photography in order to make the characters more visible.

Last, I have placed the captions that accompany the carved figures. I divided these texts in two ways. First, they are separated by which epic the scenes on which they are commenting belong. I arranged these epics in their narrative sequence, starting with the *Iliad* and ending with the *Iliupersis*. Due to the way in which the Tabula is organized, the Iliad division is further broken into individual books. Second, there are individual anonymous blocks within each epic according to the episodic divisions within the images. These blocks can contain more than one caption, depending on the contents of the episode.


	[3] : Petrain 50 for Mancuso's 1909 reconstruction of the text

	[4] : Petrain 96





#### Back to [Home](https://brclar15.github.io/tabulaCapitolina/)
#### Back to [Digital Editing page](digitalEditing.md)

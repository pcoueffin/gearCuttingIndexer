# gearCuttingIndexer
Variations on the Atlas Gear Cutting Indexer in OpenScad

I started out by watching Mr. Pete's Youtube video here:
https://www.youtube.com/watch?v=uk7HvVyTlDQ

That lead me to a set of drawings for the indexer that he
had on myheap:

https://myheap.com/metalworking/mr-pete-project-page/atlas-gear-cutting-attachment.html

At that point I pretty much knew I needed to draw this
thing up in open OpenScad so I could 3d-print prototypes from it.

The model directly from the myheap drawings can be found under atlas/  there should be
source files under atlas/scad and printable stl's under atlas/stl.  A Makefile in atlas/
will call openscad to rebuild the stls for you.

I plan to add scaled versions to sherline/ and loganshaper/ so you can have versions that
work on Sherline lathes (or milling machines) and on a 6" shaper.  I might add a crude milling
attachment (or substitute) for the Sherline lathe variant.

I'd also like to add a facility to use shop-made index plates instead of changewheels.  3D-printing
or laser cutting index plates is so quick and easy that there is not really a good reason not to do it.

Maybe an alternate spindle that either takes sherline threaded and MT1 tapered accessories, or
one built around a cheaply available straight-shank ER collet chuck.

I don't love Atlas' spindle locking method.  I'll probably consider improving that.

All of this is to facilitate printing a prototype (that would probably be mostly adequate for
light use) then replacing the parts one at a time with metal ones as you make them.  This is my
preferred way of prototyping parts.  It'd also make it pretty straightforward to cast the body 
and slide assembly if you wanted to.

# Overdrive

Overdrive is a small (at this moment) [Gentoo](http://www.gentoo.org) overlay in which I collect tools and libraries I use day by day that misses in official portage tree or modified by me in some way.

## How to use it

By now Overdrive is not included in official list of Gentoo overlays, so you must add it manually. Here are necessary steps for doing it:

1. edit /etc/layman/layman.cfg
add a local overlay list file after overlays label

```
...

overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
            file:///var/lib/layman/custom_overlays.xml

...
```

2. edit /var/lib/layman/custom_overlays.xml

```
<?xml version="1.0" ?>
<repositories version="1.0">
  <repo priority="50" quality="experimental" status="unofficial">
    <name>overdrive</name>
    <description>Overdrive overlay provides custom ebuilds by pixe1f10w</description>
    <homepage>http://github.com/pixe1f10w/overdrive</homepage>
    <owner>
      <email>izhirov@gmail.com</email>
    </owner>
    <source type="git">git://github.com/pixe1f10w/overdrive.git</source>
  </repo>
</repositories>
```

3. add overdrive overlay using layman

```
# layman -f -a overdrive
```

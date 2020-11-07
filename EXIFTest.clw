
  PROGRAM

  INCLUDE('Freeimcl.inc'),ONCE 
  
  
oImage FreeImageClass

  MAP
  END
  
csFileName CSTRING(255)  

  CODE

  csFileName = 'C:\Dropbox (Personal)\IMG_4209.jpg'
  oImage.iImage.Load(csFileName)
  MESSAGE(CLIP(oImage.iImage.GetMetadata(FIMD_EXIF_GPS, 'GPSLatitudeRef'))  & ' ' |
        & CLIP(oImage.iImage.GetMetadata(FIMD_EXIF_GPS, 'GPSLatitude'))     & ',' |
        & CLIP(oImage.iImage.GetMetadata(FIMD_EXIF_GPS, 'GPSLongitudeRef')) & ' ' |
        & CLIP(oImage.iImage.GetMetadata(FIMD_EXIF_GPS, 'GPSLongitude')))
  RETURN 


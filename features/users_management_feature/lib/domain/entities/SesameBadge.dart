import 'package:core/exports.dart';

class SesameBadge {
  final DateTime creationDate;
  final DateTime expirationDate;
  final String signature;
  SesameBadge(
      {required this.creationDate,
      required this.expirationDate,
      required this.signature});

  String toDomainUri(){
    return "$creationDate-$expirationDate-$signature";
  }

  static SesameBadge? createFromDomainUri(String domainURI){
    List<String> extractedData = domainURI.split("-");
     if (extractedData.length == 3){
       try{
         return SesameBadge(
           creationDate:  extractedData[0].parseIsoDateTime()!,
           expirationDate:extractedData[1].parseIsoDateTime()!  ,
           signature: extractedData[2]
         );
       } catch (ex){
         logger.e(ex);
         return null;
       }
     } else {
       return null;
     }
  }
}

enum SesamePermissionState { denied, granted, requ_auth }

class SesamePermission {
  final String id;
  final String label;
  final SesamePermissionState state;
  SesamePermission(this.id, this.label, this.state);
}

class SesameRole {
  final String id;
  final List<SesamePermission> permissions;
  SesameRole({required this.id, required this.permissions});

  static SesameRole defaultRole =
      SesameRole(id: "default", permissions: List.empty());
}

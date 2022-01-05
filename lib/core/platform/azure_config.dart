import 'package:aad_oauth/model/config.dart';

final Config config = Config(
    tenant: "YOUR_TENANT_ID",
    clientId: "YOUR_CLIENT_ID",
    scope: "openid profile offline_access",
    redirectUri: "your redirect url available in azure portal");

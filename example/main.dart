import 'package:lifx_http_api/lifx_http_api.dart';

var client = Client('YOUR_LIFX_CLOUD_API_KEY');

void main() async {
  // Get all lights
  Iterable<Bulb> lights = await client.listLights();
  // Change bulb power (should be "on" or "off")
  await client.setState('bulb-id-goes-here', power: "on");
  // Change bulb brightness (shoud be between 0.0 and 1.0)
  await client.setState('bulb-id-goes-here', brightness: 0.5);
}

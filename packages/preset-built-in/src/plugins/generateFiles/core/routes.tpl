import { ApplyPluginsType{{ #config.dynamicImport }}, dynamic{{ /config.dynamicImport }} } from '{{{ runtimePath }}}';
import { plugin } from './plugin';

export function getRoutes() {
  const routes = {{{ routes }}};

  // allow user to extend routes
  plugin.applyPlugins({
    key: 'patchRoutes',
    type: ApplyPluginsType.event,
    args: { routes },
  });

  return routes;
}

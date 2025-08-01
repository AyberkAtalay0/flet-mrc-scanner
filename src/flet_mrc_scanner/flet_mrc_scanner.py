from flet.core.constrained_control import ConstrainedControl

class MrcScanner(ConstrainedControl):
    def __init__(self, on_scan=None, **kwargs):
        super().__init__(**kwargs)
        self.on_scan = on_scan

    def _get_control_name(self):
        return "mrcscanner"

    @property
    def on_scan(self):
        return self._get_event_handler("scan")

    @on_scan.setter
    def on_scan(self, handler):
        self._add_event_handler("scan", handler)

from i3pystatus import Status

status = Status()

status.register("battery",
    format="{remaining:%E%h:%M}",
    alert=True,
    alert_percentage=5,
    )
status.run()

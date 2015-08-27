#!/usr/bin/env python

try:
    from libcloud.compute.types import Provider
    from libcloud.compute.providers import get_driver
    from libcloud.common.google import GoogleBaseError, QuotaExceededError, \
            ResourceExistsError, ResourceInUseError, ResourceNotFoundError
    _ = Provider.GCE
except:
    print("GCE inventory script requires libcloud >= 0.13")
    sys.exit(1)
print("OK")
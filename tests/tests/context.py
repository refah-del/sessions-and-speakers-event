# tests/context.py

import os
import sys

# Add the src folder to the Python path so we can import project modules
sys.path.insert(
    0,
    os.path.abspath(os.path.join(os.path.dirname(__file__), "../src"))
)

# Import the persistence layer and service layer from your project
from sessions_and_speakers_event.persistence_layer.mysql_persistence_wrapper import (
    MySQLPersistenceWrapper,
)
from sessions_and_speakers_event.service_layer.app_services import AppServices

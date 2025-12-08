import os
import json
import pytest

from context import MySQLPersistenceWrapper, AppServices


@pytest.fixture(scope="class")
def app_services():
    """
    Fixture: create AppServices using a real MySQLPersistenceWrapper
    and the JSON config file.
    """
    print("\nSetting up app_services fixture.")

    working_dir = os.getcwd()
    config_dir = "config"
    config_file_name = "sessions_and_speakers_event_app_config.json"
    config_path = os.path.join(working_dir, config_dir, config_file_name)

    # Load configuration
    with open(config_path, "r") as f:
        config_dict = json.loads(f.read())

    # Create database wrapper and service layer
    db_wrapper = MySQLPersistenceWrapper(config_dict)
    services = AppServices(config_dict)   # ← هنا التعديل المهم

    yield services

    print("\nTearing down app_services fixture.")


class TestServiceLayer:
    """Unit tests for the service layer."""

    def test_can_create_services(self, app_services):
        """Verify that the AppServices object is created."""
        assert app_services is not None

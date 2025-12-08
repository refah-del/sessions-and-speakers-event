"""
Persistence layer unit tests for sessions_and_speakers_event.
"""

import os
import json
import pytest

from context import MySQLPersistenceWrapper


@pytest.fixture(scope="class")
def mysql_persistence_wrapper():
    """Fixture: create and return MySQLPersistenceWrapper using the config file."""
    print("\nSetting up mysql_persistence_wrapper fixture.")

    # Build the full path to the configuration file
    working_dir = os.getcwd()
    config_dir = "config"
    config_file_name = "sessions_and_speakers_event_app_config.json"
    config_path = os.path.join(working_dir, config_dir, config_file_name)

    # Load configuration file
    with open(config_path, "r") as f:
        config_dict = json.loads(f.read())

    # Create the wrapper object
    db = MySQLPersistenceWrapper(config_dict)

    # Return it for tests
    yield db

    print("\nTearing down mysql_persistence_wrapper fixture.")
    # If you have a close method, you can call it:
    # db.close_connection_pool()


class TestPersistenceLayer:
    """Unit tests for the persistence (database) layer."""

    def test_can_create_wrapper(self, mysql_persistence_wrapper):
        """Verify that the wrapper initializes without errors."""
        assert mysql_persistence_wrapper is not None





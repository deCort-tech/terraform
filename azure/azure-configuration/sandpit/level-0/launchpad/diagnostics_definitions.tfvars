#
# Define a set of settings for the various type of Azure resources
#

diagnostics_definition = {
  log_analytics = {
    name = "l0_operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["Audit", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }

  }

  l0_default = {
    name = "l0_operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }

  }

  bastion_host = {
    name = "l0_operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["BastionAuditLogs", true, false, 7],
      ]
    }

  }

  l0_networking = {
    name = "l0_operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["VMProtectionAlerts", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }

  }

  public_ip_address = {
    name = "l0_operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["DDoSProtectionNotifications", true, false, 7],
        ["DDoSMitigationFlowLogs", true, false, 7],
        ["DDoSMitigationReports", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }

  }

  network_security_group = {
    name = "l0_operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["NetworkSecurityGroupEvent", true, false, 7],
        ["NetworkSecurityGroupRuleCounter", true, false, 7],
      ]
    }

  }

  network_interface_card = {
    name = "l0_operational_logs_and_metrics"
    categories = {
      log = [
        #   # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }

  }

  event_hub_namespace = {
    name = "l0_operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["ArchiveLogs", true, false, 7],
        ["OperationalLogs", true, false, 7],
        ["EventHubVNetConnectionEvent", true, false, 7],
        ["CustomerManagedKeyUserLogs", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }

  }

  l0_siem = {
    name = "l0_siem_logs"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, true, 0],
      ]

      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", false, false, 0],
      ]
    }

  }

  subscription_operations = {
    name = "subscription_operations"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)"]
        ["Administrative", true],
        ["Security", true],
        ["ServiceHealth", true],
        ["Alert", true],
        ["Policy", true],
        ["Autoscale", true],
        ["ResourceHealth", true],
        ["Recommendation", true],
      ]
    }
  }

  subscription_siem = {
    name = "activity_logs_for_siem"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)"]
        ["Administrative", false],
        ["Security", true],
        ["ServiceHealth", false],
        ["Alert", false],
        ["Policy", true],
        ["Autoscale", false],
        ["ResourceHealth", false],
        ["Recommendation", false],
      ]
    }

  }

}
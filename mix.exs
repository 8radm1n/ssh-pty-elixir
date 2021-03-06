defmodule SSHPTY.MixProject do
  use Mix.Project

  def project do
    [ app: :ssh_pty_ex,
      version: "0.0.4",
      elixir: "~> 1.0",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      dialyzer: [
        add_plt_apps: [
          :logger,
          :jds_math_ex,
          :linear_ex,
          :netaddr_ex,
          :snmp_mib_ex,
          :net_snmp_ex,
          :poison,
        ],
        ignore_warnings: "dialyzer.ignore",
        flags: [
          :unmatched_returns,
          :error_handling,
          :race_conditions,
          :underspecs,
        ],
      ],
    ]
  end

  def application do
    [ extra_applications: [
        :logger,
        :netaddr_ex,
        :ssh,
      ]
    ]
  end

  defp deps do
    [ { :netaddr_ex,
        git: "https://gitlab.com/jonnystorm/netaddr-elixir.git"
      },
    ]
  end
end

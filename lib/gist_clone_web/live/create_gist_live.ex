defmodule GistCloneWeb.CreateGistLive do
  use GistCloneWeb, :live_view
  import Phoenix.HTML.Form
  alias GistClone.{Gists, Gists.Gist}

  def mount(_params, _session, socket) do
    socket = assign(
      socket,
      form: to_form(Gists.change_gist(%Gist{}))
    )

    {:ok, socket}
  end

end

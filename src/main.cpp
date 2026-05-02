SKSE_PLUGIN_LOAD(const SKSE::LoadInterface* a_skse)
{
	SKSE::Init(a_skse);

  // logs to plugin_name.log
	logs::info("Hello World!");

  // logs to skyrim console
  SKSE::GetMessagingInterface()->RegisterListener([](SKSE::MessagingInterface::Message *message) {
      if (message->type == SKSE::MessagingInterface::kDataLoaded)
          RE::ConsoleLog::GetSingleton()->Print("Hello, world!");
  });

	return true;
}

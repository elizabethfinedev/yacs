namespace :catalog do
  task load: :environment do
    Rails.application.config.catalog_adapter.load_catalog
  end

  task destroy: :environment do
    Rails.application.config.catalog_adapter.destroy_catalog
    ap 'Successfully destroyed!'
  end

  task update_seats: :environment do
    Rails.application.config.catalog_adapter.update_section_seats
  end
end

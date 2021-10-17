module PhcdevworksAccountsStripe
    module ApplicationHelper

        # PHCAccountsStripe - Invoice Status
        def phcdev_invoice_status(status)
            colors = {
                'draft'         => 'badge badge-secondary',
                'open'          => 'badge-success',
                'paid'          => 'badge-green',
                'uncollectible' => 'badge-danger',
                'void'          => 'badge-dark'
            }
            content_tag(:span, class: "badge #{colors[status]} badge-square") do
            end
        end

    end
end

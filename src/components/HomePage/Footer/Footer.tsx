import { memo } from 'react';
import type { FC } from 'react';

import resets from '../../_resets.module.css';
import classes from './Footer.module.css';

interface Props {
  className?: string;
}
/* @figmaId 414:202 */
export const Footer: FC<Props> = memo(function Footer(props = {}) {
  return (
    <div className={`${resets.storybrainResets} ${classes.root}`}>
      <div className={classes.footer}>
        <div className={classes.divQodefGridItem}>
          <div className={classes.divQodefMLine}></div>
          <div className={classes.welcomeToAPlaceOfRefinementAnd}>
            <div className={classes.textBlock}>Welcome to a place of refinement and</div>
            <div className={classes.textBlock2}>beauty. This is Umeå, a WP gem we</div>
            <div className={classes.textBlock3}>made for all furniture stores &amp; brands.</div>
          </div>
          <div className={classes.divQodefMLine2}></div>
          <div className={classes.linkHeading6FB}>FB.</div>
          <div className={classes.linkHeading6TW}>TW.</div>
          <div className={classes.linkHeading6IN}>IN.</div>
          <div className={classes.linkHeading6BE}>BE.</div>
          <div className={classes.linkHeading6DR}>DR.</div>
          <div className={classes.image1}></div>
        </div>
        <div className={classes.divQodefGridItem2}>
          <div className={classes.heading5Studio}>Studio</div>
          <div className={classes.listItemLinkVisitOurStore}>Visit our Store</div>
          <div className={classes.listItemLinkAboutUs}>About Us</div>
          <div className={classes.listItemLinkOurBlog}>Our Blog</div>
          <div className={classes.listItemLinkCraftsmanship}>Craftsmanship</div>
          <div className={classes.listItemLinkApplyForAJob}>Apply For a Job</div>
        </div>
        <div className={classes.divQodefGridItem3}>
          <div className={classes.heading5Shopping}>Shopping</div>
          <div className={classes.listItemLinkOnlinePayments}>Online Payments</div>
          <div className={classes.listItemLinkGiftCards}>Gift Cards</div>
          <div className={classes.listItemLinkReturnPolicy}>Return Policy</div>
          <div className={classes.listItemLinkFurnitureAssemblin}>Furniture Assembling</div>
          <div className={classes.listItemLinkShippingMethods}>Shipping Methods</div>
        </div>
        <div className={classes.divQodefGridItem4}>
          <div className={classes.heading5PaymentMethods}>Payment Methods</div>
          <div className={classes.selectOneOfManySupportedPaymen}>
            <div className={classes.textBlock4}>Select one of many supported payment</div>
            <div className={classes.textBlock5}>providers from the list below.</div>
          </div>
          <div className={classes.divQodefMLine3}></div>
          <div className={classes.footerLogoGroupPng}></div>
        </div>
      </div>
      <div className={classes.footer2}>
        <div className={classes.divQodefPageFooterBottomAreaIn}>
          <div className={classes._2021NixbeesTechnologiesAllRigh}>
            © 2021 Nixbees Technologies, All Rights Reserved
          </div>
        </div>
      </div>
    </div>
  );
});

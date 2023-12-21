import { memo, SVGProps } from 'react';

const ArticleLinkSvgIcon = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 13 13' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <g clipPath='url(#clip0_484_49)'>
      <path
        d='M12.297 1.628L1.20499 12.721L0.631989 12.148L11.035 1.745L2.68299 1.746L2.68399 0.936005H12.012C12.174 0.936005 12.325 1.035 12.384 1.186C12.448 1.337 12.413 1.512 12.297 1.628Z'
        fill='black'
      />
      <path
        d='M12.415 10.265L11.608 10.263V2.31801L1.491 12.435L0.917999 11.861L11.725 1.05501C11.844 0.939007 12.016 0.904007 12.166 0.968007C12.318 1.03001 12.415 1.17801 12.415 1.34101V10.265Z'
        fill='black'
      />
    </g>
    <defs>
      <clipPath id='clip0_484_49'>
        <rect width={12} height={12} fill='white' transform='translate(0.5 0.850006)' />
      </clipPath>
    </defs>
  </svg>
);
const Memo = memo(ArticleLinkSvgIcon);
export { Memo as ArticleLinkSvgIcon };

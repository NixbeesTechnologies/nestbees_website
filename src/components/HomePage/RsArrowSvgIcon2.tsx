import { memo, SVGProps } from 'react';

const RsArrowSvgIcon2 = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 36 16' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <g clipPath='url(#clip0_484_37)'>
      <path d='M16.577 1.47202L3.866 14.059H34.194' stroke='black' strokeWidth={2} strokeMiterlimit={10} />
    </g>
    <defs>
      <clipPath id='clip0_484_37'>
        <rect width={36} height={15} fill='white' transform='matrix(-1 0 0 -1 36 15.5)' />
      </clipPath>
    </defs>
  </svg>
);
const Memo = memo(RsArrowSvgIcon2);
export { Memo as RsArrowSvgIcon2 };
